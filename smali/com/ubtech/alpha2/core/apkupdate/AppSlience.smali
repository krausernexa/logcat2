.class public Lcom/ubtech/alpha2/core/apkupdate/AppSlience;
.super Ljava/lang/Object;
.source "AppSlience.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "sPath"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 48
    :cond_0
    return-void
.end method

.method public onSlience(Ljava/lang/String;Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;-><init>(Lcom/ubtech/alpha2/core/apkupdate/AppSlience;Ljava/lang/String;Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    .local v0, "installThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-void
.end method

.method public onUnInitall(Ljava/lang/String;Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;)V
    .locals 2
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;-><init>(Lcom/ubtech/alpha2/core/apkupdate/AppSlience;Ljava/lang/String;Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    .local v0, "unInstallThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method
