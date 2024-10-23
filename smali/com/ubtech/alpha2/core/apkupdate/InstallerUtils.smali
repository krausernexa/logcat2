.class public Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;
.super Ljava/lang/Object;
.source "InstallerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public install(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "apkAbsolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v13, -0x1

    .line 22
    const/4 v11, 0x4

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "pm"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "install"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const-string v12, "-r"

    aput-object v12, v0, v11

    const/4 v11, 0x3

    aput-object p1, v0, v11

    .line 23
    .local v0, "args":[Ljava/lang/String;
    const-string v9, ""

    .line 24
    .local v9, "result":Ljava/lang/String;
    new-instance v7, Ljava/lang/ProcessBuilder;

    invoke-direct {v7, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 25
    .local v7, "processBuilder":Ljava/lang/ProcessBuilder;
    const/4 v6, 0x0

    .line 26
    .local v6, "process":Ljava/lang/Process;
    const/4 v4, 0x0

    .line 27
    .local v4, "errIs":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 29
    .local v5, "inIs":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v8, -0x1

    .line 31
    .local v8, "read":I
    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6

    .line 32
    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 33
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v13, :cond_3

    .line 34
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "read":I
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    if-eqz v4, :cond_0

    .line 50
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 52
    :cond_0
    if-eqz v5, :cond_1

    .line 53
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 58
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 59
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 63
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v9

    .line 36
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "read":I
    :cond_3
    const/16 v11, 0x9d

    :try_start_3
    invoke-virtual {v1, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 37
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 38
    :goto_3
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v13, :cond_6

    .line 39
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 45
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "read":I
    :catch_1
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    if-eqz v4, :cond_4

    .line 50
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 52
    :cond_4
    if-eqz v5, :cond_5

    .line 53
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 58
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v6, :cond_2

    .line 59
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    goto :goto_2

    .line 41
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "read":I
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 42
    .local v2, "data":[B
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 49
    .end local v9    # "result":Ljava/lang/String;
    .local v10, "result":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 50
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 52
    :cond_7
    if-eqz v5, :cond_8

    .line 53
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 58
    :cond_8
    :goto_5
    if-eqz v6, :cond_c

    .line 59
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    move-object v9, v10

    .end local v10    # "result":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    goto :goto_2

    .line 55
    .end local v9    # "result":Ljava/lang/String;
    .restart local v10    # "result":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 56
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 55
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v8    # "read":I
    .end local v10    # "result":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 56
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 55
    .local v3, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 56
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 48
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 49
    if-eqz v4, :cond_9

    .line 50
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 52
    :cond_9
    if-eqz v5, :cond_a

    .line 53
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 58
    :cond_a
    :goto_6
    if-eqz v6, :cond_b

    .line 59
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_b
    throw v11

    .line 55
    :catch_5
    move-exception v3

    .line 56
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "result":Ljava/lang/String;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v8    # "read":I
    .restart local v10    # "result":Ljava/lang/String;
    :cond_c
    move-object v9, v10

    .end local v10    # "result":Ljava/lang/String;
    .restart local v9    # "result":Ljava/lang/String;
    goto :goto_2
.end method
