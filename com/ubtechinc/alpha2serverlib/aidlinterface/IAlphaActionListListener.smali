.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener;
.super Ljava/lang/Object;
.source "IAlphaActionListListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionListListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGetActionList(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
