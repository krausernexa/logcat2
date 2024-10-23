.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;
.super Ljava/lang/Object;
.source "IAlphaEnglishOfflineUnderstandListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAlpha2EnglishOfflineUnderstandResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
