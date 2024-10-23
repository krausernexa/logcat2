.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;
.super Ljava/lang/Object;
.source "ISpeechCallBackListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallBack(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPlayEnd(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
