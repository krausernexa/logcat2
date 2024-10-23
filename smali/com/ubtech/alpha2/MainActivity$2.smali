.class Lcom/ubtech/alpha2/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtech/alpha2/MainActivity;->onUnInitall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtech/alpha2/MainActivity;


# direct methods
.method constructor <init>(Lcom/ubtech/alpha2/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtech/alpha2/MainActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ubtech/alpha2/MainActivity$2;->this$0:Lcom/ubtech/alpha2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    const-string v0, "mount -o remount rw /data"

    .line 75
    .local v0, "busybox":Ljava/lang/String;
    const-string v1, "chmod 777 /data/app/com.example.zdydebug.apk"

    .line 76
    .local v1, "chmod":Ljava/lang/String;
    const-string v3, "pm uninstall com.example.zdydebug"

    .line 77
    .local v3, "uninstallapk":Ljava/lang/String;
    new-instance v2, Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;

    invoke-direct {v2}, Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;-><init>()V

    .line 78
    .local v2, "unInstallerUtils":Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;
    invoke-virtual {v2, v0, v1}, Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;->chmodApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v3}, Lcom/ubtech/alpha2/core/apkupdate/UnInstallerUtils;->uninstallApk(Ljava/lang/String;)Z

    .line 80
    return-void
.end method
