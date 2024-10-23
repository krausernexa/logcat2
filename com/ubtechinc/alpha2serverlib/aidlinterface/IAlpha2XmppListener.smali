.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;
.super Ljava/lang/Object;
.source "IAlpha2XmppListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerXmppCallBackListener(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendCustomXmppMessage(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterXmppCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
