# rdma

## server side:
[root@localhost rdma-example]\# ./example1 -g 3
 ------------------------------------------------
 Server Side:
 Device name : "(null)"
 IB port : 1
 TCP port : 19875
 GID index : 3
 ------------------------------------------------

waiting on port 19875 for TCP connection
TCP connection was established
searching for IB devices in host
found 2 device(s)
device not specified, using first one found: mlx5_0
going to send the message: 'SEND operation '
MR was registered with addr=0x1949fd0, lkey=0x3281a, rkey=0x3281a, flags=0x7
QP was created, QP number=0x131

Local LID = 0x0
Remote address = 0x12f6fd0
Remote rkey = 0x29c91
Remote QP number = 0xef
Remote LID = 0x0
Remote GID =00:00:00:00:00:00:00:00:00:00:ff:ff:c0:a8:01:6e
 QP state was change to RTS
server begin post_send 
Send Request was posted
completion was found in CQ with status 0x0
Contents of server buffer: 'RDMA write operaion '

test result is 0


## client side: 
[root@localhost rdma-example]\# ./example1 -p 19875 -g 3 192.168.1.100
servername=192.168.1.100
 ------------------------------------------------
 Client Side:
 Device name : "(null)"
 IB port : 1
 IP : 192.168.1.100
 TCP port : 19875
 GID index : 3
 ------------------------------------------------

TCP connection was established
searching for IB devices in host
found 2 device(s)
device not specified, using first one found: mlx5_0
MR was registered with addr=0x12f6fd0, lkey=0x29c91, rkey=0x29c91, flags=0x7
QP was created, QP number=0xef

Local LID = 0x0
Remote address = 0x1949fd0
Remote rkey = 0x3281a
Remote QP number = 0x131
Remote LID = 0x0
Remote GID =00:00:00:00:00:00:00:00:00:00:ff:ff:c0:a8:01:64
 Receive Request was posted
QP state was change to RTS
completion was found in CQ with status 0x0
Client Buffer's Message is: 'SEND operation '
RDMA Read Request was posted
completion was found in CQ with status 0x0
Contents of server's buffer: 'RDMA read operatP'
Now replacing it with: 'RDMA write operation'
RDMA Write Request was posted
completion was found in CQ with status 0x0

test result is 0
