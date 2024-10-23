.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;
.super Ljava/lang/Object;
.source "IAlphaTextUnderstandListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAlpha2UnderStandError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAlpha2UnderStandTextResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
