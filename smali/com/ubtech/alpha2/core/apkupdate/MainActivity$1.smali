.class Lcom/ubtech/alpha2/core/apkupdate/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtech/alpha2/core/apkupdate/MainActivity;->onSlience()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtech/alpha2/core/apkupdate/MainActivity;


# direct methods
.method constructor <init>(Lcom/ubtech/alpha2/core/apkupdate/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtech/alpha2/core/apkupdate/MainActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ubtech/alpha2/core/apkupdate/MainActivity$1;->this$0:Lcom/ubtech/alpha2/core/apkupdate/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
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

    .line 55
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;

    invoke-direct {v0}, Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;-><init>()V

    .line 56
    .local v0, "installerUtils":Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;
    invoke-virtual {v0, v1}, Lcom/ubtech/alpha2/core/apkupdate/InstallerUtils;->install(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    return-void
.end method
