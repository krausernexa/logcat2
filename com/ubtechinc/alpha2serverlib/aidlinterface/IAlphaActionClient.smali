.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient;
.super Ljava/lang/Object;
.source "IAlphaActionClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaActionClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onActionStop(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method