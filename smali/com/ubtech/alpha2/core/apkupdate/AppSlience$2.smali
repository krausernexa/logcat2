.class Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;
.super Ljava/lang/Object;
.source "AppSlience.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtech/alpha2/core/apkupdate/AppSlience;->onUnInitall(Ljava/lang/String;Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtech/alpha2/core/apkupdate/AppSlience;

.field final synthetic val$app:Ljava/lang/String;

.field final synthetic val$listener:Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;


# direct methods
.method constructor <init>(Lcom/ubtech/alpha2/core/apkupdate/AppSlience;Ljava/lang/String;Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtech/alpha2/core/apkupdate/AppSlience;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;->this$0:Lcom/ubtech/alpha2/core/apkupdate/AppSlience;

    iput-object p2, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;->val$app:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;->val$listener:Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 55
    const-string v0, "mount -o remount rw /data"

    .line 56
    .local v0, "busybox":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 777 /data/app/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;->val$app:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "chmod":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pm uninstall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;->val$app:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "uninstallapk":Ljava/lang/String;
    new-instance v3, Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;

    invoke-direct {v3}, Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;-><init>()V

    .line 59
    .local v3, "unInstallerUtils":Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;
    invoke-virtual {v3, v0, v1}, Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;->chmodApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v4}, Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;->uninstallApk(Ljava/lang/String;)Z

    move-result v2

    .line 61
    .local v2, "ret":Z
    if-ne v2, v7, :cond_0

    .line 62
    iget-object v5, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;->val$listener:Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

    invoke-interface {v5, v7}, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;->onSlienceResult(I)V

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v5, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$2;->val$listener:Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;->onSlienceResult(I)V

    goto :goto_0
.end method
