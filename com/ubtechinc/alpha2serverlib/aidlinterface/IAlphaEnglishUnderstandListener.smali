.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;
.super Ljava/lang/Object;
.source "IAlphaEnglishUnderstandListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAlpha2EnglishUnderstandResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
