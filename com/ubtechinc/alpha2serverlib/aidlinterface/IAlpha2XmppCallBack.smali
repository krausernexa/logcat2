.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;
.super Ljava/lang/Object;
.source "IAlpha2XmppCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onReceiveMessage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
