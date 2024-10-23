.class public Lcom/ubtech/alpha2/core/utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static final NETTYPE_CMNET:I = 0x3

.field public static final NETTYPE_CMWAP:I = 0x2

.field public static final NETTYPE_WIFI:I = 0x1

.field private static final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/ubtech/alpha2/core/utils/CommonUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ubtech/alpha2/core/utils/CommonUtils;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileExits(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkSDCard()Z
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "flag":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x1

    .line 101
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static dpToPixel(FLandroid/content/Context;)F
    .locals 4
    .param p0, "dp"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 194
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 195
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, p0

    return v2
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, "netType":I
    const-string v6, "connectivity"

    .line 70
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 71
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 72
    .local v5, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v5, :cond_0

    move v4, v3

    .line 88
    .end local v3    # "netType":I
    .local v4, "netType":I
    :goto_0
    return v4

    .line 75
    .end local v4    # "netType":I
    .restart local v3    # "netType":I
    :cond_0
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 76
    .local v2, "nType":I
    if-nez v2, :cond_3

    .line 77
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "extraInfo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cmnet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    const/4 v3, 0x3

    .end local v1    # "extraInfo":Ljava/lang/String;
    :cond_1
    :goto_1
    move v4, v3

    .line 88
    .end local v3    # "netType":I
    .restart local v4    # "netType":I
    goto :goto_0

    .line 82
    .end local v4    # "netType":I
    .restart local v1    # "extraInfo":Ljava/lang/String;
    .restart local v3    # "netType":I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 85
    .end local v1    # "extraInfo":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    .line 86
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static getSaveLocalURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v1, "path":Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "youtu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    const-string v4, "zdy"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ni  ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const-string v4, "connectivity"

    .line 50
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 54
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 55
    const-string v4, "zdy"

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ni  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ||  \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 56
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 55
    invoke-static {v4, v5}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static pixelsToDp(FLandroid/content/Context;)F
    .locals 4
    .param p0, "px"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 203
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 204
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    div-float v2, p0, v2

    return v2
.end method

.method public static writeLocalFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 158
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/ubtech/alpha2/core/utils/CommonUtils;->checkSDCard()Z

    move-result v6

    if-nez v6, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v5

    .line 161
    :cond_1
    const/4 v1, 0x0

    .line 162
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 165
    .local v3, "output":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/ubtech/alpha2/core/utils/CommonUtils;->getSaveLocalURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 167
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 168
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .end local v3    # "output":Ljava/io/OutputStream;
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_2
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 170
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    const/4 v5, 0x1

    .line 180
    if-eqz v4, :cond_0

    .line 181
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    :cond_2
    :try_start_4
    sget-object v6, Lcom/ubtech/alpha2/core/utils/CommonUtils;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeLocalFile: \u8be5\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    :cond_3
    if-eqz v3, :cond_4

    .line 181
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v1, v2

    .line 184
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 182
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 185
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    if-eqz v3, :cond_0

    .line 181
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 182
    :catch_3
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 180
    :goto_2
    if-eqz v3, :cond_5

    .line 181
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 184
    :cond_5
    :goto_3
    throw v5

    .line 182
    :catch_4
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .line 176
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "output":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v3    # "output":Ljava/io/OutputStream;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1
.end method
