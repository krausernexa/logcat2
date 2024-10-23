.class public Lcom/ubtechinc/mic5/LedControl;
.super Ljava/lang/Object;
.source "LedControl.java"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 23
    const-string v2, "ro.hardware.version"

    invoke-static {v2}, Lcom/ubtechinc/mic5/SystemProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "property":Ljava/lang/String;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "property:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x1

    .line 26
    .local v0, "is5Mic":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "alpha2_10005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 33
    :goto_0
    if-eqz v0, :cond_0

    .line 34
    const-string v2, "head_led"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void

    .line 28
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "alpha2_10002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native close()Z
.end method

.method public static native ledSetEye(IIIIIII)Z
.end method

.method public static native ledSetHead(IIIIIIII)Z
.end method

.method public static native ledSetMouth(I)Z
.end method

.method public static native ledSetOFF(I)Z
.end method

.method public static native ledSetOn(I)Z
.end method

.method public static native open()Z
.end method
