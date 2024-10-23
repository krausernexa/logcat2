.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;
.super Ljava/lang/Object;
.source "IAlpha2SerialPortRcvClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onListenSerialPortRcvData([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
