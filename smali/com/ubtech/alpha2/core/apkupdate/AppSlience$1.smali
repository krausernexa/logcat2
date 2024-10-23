.class Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;
.super Ljava/lang/Object;
.source "AppSlience.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtech/alpha2/core/apkupdate/AppSlience;->onSlience(Ljava/lang/String;Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtech/alpha2/core/apkupdate/AppSlience;

.field final synthetic val$listener:Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ubtech/alpha2/core/apkupdate/AppSlience;Ljava/lang/String;Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtech/alpha2/core/apkupdate/AppSlience;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;->this$0:Lcom/ubtech/alpha2/core/apkupdate/AppSlience;

    iput-object p2, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;->val$listener:Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;

    invoke-direct {v0}, Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;-><init>()V

    .line 23
    .local v0, "installerUtils":Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;
    iget-object v2, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;->install(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "success"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;->val$listener:Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;->onSlienceResult(I)V

    .line 29
    :goto_0
    iget-object v2, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;->this$0:Lcom/ubtech/alpha2/core/apkupdate/AppSlience;

    iget-object v3, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ubtech/alpha2/core/apkupdate/AppSlience;->deleteFile(Ljava/lang/String;)V

    .line 30
    return-void

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$1;->val$listener:Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ubtech/alpha2/core/apkupdate/AppSlience$SlienceListener;->onSlienceResult(I)V

    goto :goto_0
.end method
