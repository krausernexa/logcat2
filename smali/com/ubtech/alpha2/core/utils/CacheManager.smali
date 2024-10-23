.class public Lcom/ubtech/alpha2/core/utils/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/ubtech/alpha2/core/utils/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubtech/alpha2/core/utils/CacheManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()Z
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ubtech/alpha2/BaseApplication;->SYS_CACHE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static clearCache(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 185
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, "path":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/ubtech/alpha2/BaseApplication;->SYS_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isInvalidObject(Ljava/lang/String;J)Z
    .locals 13
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 143
    invoke-static {p0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 147
    .local v4, "last":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 149
    .local v0, "current":J
    sub-long v8, v0, v4

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, p1

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 150
    sget-object v8, Lcom/ubtech/alpha2/core/utils/CacheManager;->TAG:Ljava/lang/String;

    new-array v9, v6, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "the cahce is effect : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .end local v0    # "current":J
    .end local v4    # "last":J
    :goto_0
    return v6

    .line 154
    :cond_0
    sget-object v8, Lcom/ubtech/alpha2/core/utils/CacheManager;->TAG:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the cahce is invalid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 155
    goto :goto_0
.end method

.method public static readObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v4, 0x0

    .line 113
    .local v4, "obj":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-static {p0}, Lcom/ubtech/alpha2/core/utils/CacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 116
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 119
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 132
    .end local v0    # "cachePath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "obj":Ljava/lang/Object;, "TT;"
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return-object v4

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/StreamCorruptedException;
    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v1    # "e":Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v1

    .line 124
    .local v1, "e":Ljava/io/OptionalDataException;
    invoke-virtual {v1}, Ljava/io/OptionalDataException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1    # "e":Ljava/io/OptionalDataException;
    :catch_2
    move-exception v1

    .line 126
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveTestData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "xmlResult"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/ubtech/alpha2/BaseApplication;->isDebug:Z

    if-eqz v7, :cond_1

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "sdCardPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "testData"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 47
    .local v4, "path":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_0
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 53
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v1    # "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 56
    .local v3, "output":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v2, "os":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 58
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 59
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 61
    sget-object v7, Lcom/ubtech/alpha2/core/utils/CacheManager;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveTestData success: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "os":Ljava/io/BufferedOutputStream;
    .end local v3    # "output":Ljava/io/FileOutputStream;
    .end local v4    # "path":Ljava/lang/StringBuilder;
    .end local v5    # "sdCardPath":Ljava/lang/String;
    .end local v6    # "state":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 12
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 78
    :try_start_0
    invoke-static {p1}, Lcom/ubtech/alpha2/core/utils/CacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 81
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 83
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 86
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 89
    sget-object v7, Lcom/ubtech/alpha2/core/utils/CacheManager;->TAG:Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeObject object success : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .end local v4    # "path":Ljava/lang/String;
    :goto_0
    return v5

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    move v5, v6

    .line 98
    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
