#!/native/usr/sbin/dtrace -q -s

lx-syscall::connect:entry
/progenyof($target)/
	{
		self->sa = (struct sockaddr_in *)copyin(arg1, sizeof(struct sockaddr_in));
		printf("%d/%s: %d.%d.%d.%d\n",
			       pid, probefunc, self->sa->sin_addr.S_un.S_un_b.s_b1,
			       self->sa->sin_addr.S_un.S_un_b.s_b2, self->sa->sin_addr.S_un.S_un_b.s_b3,
			       self->sa->sin_addr.S_un.S_un_b.s_b4);
}

lx-syscall::connect:return
/self->sa/
{
	printf("%d: connect returns %d, errno = %d\n", pid, arg1, errno);
	self->sa = 0;
}

