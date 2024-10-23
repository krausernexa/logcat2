.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener;
.super Ljava/lang/Object;
.source "IAlpha2SpeechClientListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SpeechClientListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onServerCallBack(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServerPlayEnd(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
