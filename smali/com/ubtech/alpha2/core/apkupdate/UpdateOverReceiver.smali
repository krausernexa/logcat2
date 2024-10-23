.class public Lcom/ubtech/alpha2/core/apkupdate/UpdateOverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateOverReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string v0, "zdy"

    const-string v1, "\u66f4\u65b0\u5b8c\u6210\u518d\u6b21\u542f\u52a8"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
