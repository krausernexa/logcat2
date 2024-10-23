.class public Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;
.super Ljava/lang/Thread;
.source "PictureSendThread.java"


# instance fields
.field private client:Ljava/net/Socket;

.field private filePath:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private isExit:Z

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->ip:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->port:I

    .line 20
    iput-object p3, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->filePath:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->startProcess()V

    .line 56
    return-void
.end method

.method public startProcess()V
    .locals 10

    .prologue
    .line 25
    :try_start_0
    new-instance v7, Ljava/net/Socket;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->ip:Ljava/lang/String;

    iget v9, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->port:I

    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v7, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->client:Ljava/net/Socket;

    .line 26
    new-instance v5, Ljava/io/DataOutputStream;

    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->client:Ljava/net/Socket;

    .line 27
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .local v5, "mOutput":Ljava/io/DataOutputStream;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->filePath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, "fi":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 32
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 34
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->filePath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 35
    .local v4, "fin":Ljava/io/FileInputStream;
    const/16 v1, 0x2000

    .line 36
    .local v1, "bufferSize":I
    new-array v0, v1, [B

    .line 37
    .local v0, "buf":[B
    const/4 v6, 0x0

    .line 38
    .local v6, "read":I
    :goto_0
    iget-boolean v7, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->isExit:Z

    if-nez v7, :cond_0

    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 39
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 45
    .end local v0    # "buf":[B
    .end local v1    # "bufferSize":I
    .end local v3    # "fi":Ljava/io/File;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "mOutput":Ljava/io/DataOutputStream;
    .end local v6    # "read":I
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 52
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_1
    return-void

    .line 41
    .restart local v0    # "buf":[B
    .restart local v1    # "bufferSize":I
    .restart local v3    # "fi":Ljava/io/File;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "mOutput":Ljava/io/DataOutputStream;
    .restart local v6    # "read":I
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 42
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 43
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 44
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/camera/PictureSendThread;->client:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 48
    .end local v0    # "buf":[B
    .end local v1    # "bufferSize":I
    .end local v3    # "fi":Ljava/io/File;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "mOutput":Ljava/io/DataOutputStream;
    .end local v6    # "read":I
    :catch_1
    move-exception v2

    .line 50
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
