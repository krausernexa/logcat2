.class public Lcom/ubtech/alpha2/core/apkupdate/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget v0, Lcom/ubtech/alpha2/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/ubtech/alpha2/core/apkupdate/MainActivity;->setContentView(I)V

    .line 32
    return-void
.end method

.method public onSlience()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ubtech/alpha2/core/apkupdate/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/ubtech/alpha2/core/apkupdate/MainActivity$1;-><init>(Lcom/ubtech/alpha2/core/apkupdate/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    .local v0, "installThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 60
    return-void
.end method

.method public onTest(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/apkupdate/MainActivity;->onSlience()V

    .line 37
    return-void
.end method

.method public onUnInitall()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ubtech/alpha2/core/apkupdate/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/ubtech/alpha2/core/apkupdate/MainActivity$2;-><init>(Lcom/ubtech/alpha2/core/apkupdate/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    .local v0, "unInstallThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method public onUpdate()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "zdy"

    const-string v3, "onUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ubtech/alpha2/FilePath;->appPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/zdyDebug.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Lcom/ubtech/alpha2/core/apkupdate/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
