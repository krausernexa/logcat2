.class public Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;
.super Ljava/lang/Object;
.source "DownLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;,
        Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;,
        Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field mDownLoadOverListener:Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;

.field private progressBar:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

.field private task:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "zdy"

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->context:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->createHandler()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->progressBar:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private dowload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "saveDir"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_0
    new-instance v0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;-><init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->task:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    .line 190
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->task:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 192
    return-void
.end method

.method private startDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ubtech/alpha2/core/utils/WebServerConstants;->LOCAL_APK_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "saveDir":Ljava/io/File;
    invoke-direct {p0, p1, v0, p2}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->dowload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .end local v0    # "saveDir":Ljava/io/File;
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v1, "zdy"

    const-string v2, "SDCard \u4e0d\u5b58\u5728"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startDownload(Ljava/lang/String;Ljava/lang/String;Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;
    .param p4, "mac"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ubtech/alpha2/core/utils/CommonUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->mDownLoadOverListener:Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;

    const/16 v2, -0xc8

    .line 131
    invoke-interface {v1, v2}, Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;->onDowanFailed(I)V

    .line 148
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    const-string v1, ":"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const-string v1, ":"

    const-string v2, "_"

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 142
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/ubtech/alpha2/core/utils/WebServerConstants;->getSavePath(Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "saveDir":Ljava/io/File;
    invoke-direct {p0, p1, v0, p2}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->dowload(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0    # "saveDir":Ljava/io/File;
    :cond_3
    const-string v1, "zdy"

    const-string v2, "SDCard \u4e0d\u5b58\u5728"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public compareVersion(Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;)Z
    .locals 9
    .param p1, "apkConfig"    # Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v6, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 68
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 69
    .local v3, "verLocal":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;->getApkVersion()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "verServer":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_0

    .line 72
    const-string v6, "zdy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "verLocal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " verServer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v5, 0x1

    .line 79
    .end local v3    # "verLocal":Ljava/lang/String;
    .end local v4    # "verServer":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public createHandler()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;

    invoke-direct {v1, p0, v0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;-><init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->handler:Landroid/os/Handler;

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v1, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;

    invoke-direct {v1, p0, v0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$UIHander;-><init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->task:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->task:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;

    invoke-virtual {v0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownloadTask;->exit()V

    .line 175
    :cond_0
    return-void
.end method

.method public onStartDownload(Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;Ljava/lang/String;)V
    .locals 4
    .param p1, "apkConfig"    # Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v1, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    invoke-direct {v1, p0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;-><init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)V

    iput-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->progressBar:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.213.94:8080/ssh/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/model/response/ApkConfigResponse;->getUploadFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "url":Ljava/lang/String;
    const-string v1, "zdy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0, v0, p2}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setDownLoadOverListener(Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;)V
    .locals 0
    .param p1, "mDownLoadOverListener"    # Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->mDownLoadOverListener:Lcom/ubtech/alpha2/core/utils/download/netdownload/DownLoadOverListener;

    .line 85
    return-void
.end method

.method public startDownLoadFile(Ljava/lang/String;Ljava/lang/String;Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;

    .prologue
    .line 113
    new-instance v0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    invoke-direct {v0, p0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;-><init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->progressBar:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    .line 114
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public startDownLoadFile(Ljava/lang/String;Ljava/lang/String;Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;
    .param p4, "mac"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    invoke-direct {v0, p0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;-><init>(Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->progressBar:Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager$DownLoadProgressBar;

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;Lcom/ubtech/alpha2/core/utils/WebServerConstants$Product;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public stopDownLoad()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/utils/download/manager/DownLoadManager;->exit()V

    .line 167
    return-void
.end method
