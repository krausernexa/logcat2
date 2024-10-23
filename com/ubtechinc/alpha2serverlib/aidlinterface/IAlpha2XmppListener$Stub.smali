.class public abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub;
.super Landroid/os/Binder;
.source "IAlpha2XmppListener.java"

# interfaces
.implements Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2XmppListener"

.field static final TRANSACTION_registerXmppCallBackListener:I = 0x1

.field static final TRANSACTION_sendCustomXmppMessage:I = 0x3

.field static final TRANSACTION_unRegisterXmppCallBackListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2XmppListener"

    invoke-virtual {p0, p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2XmppListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2XmppListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2XmppListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;

    move-result-object v1

    .line 52
    .local v1, "_arg1":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;
    invoke-virtual {p0, v0, v1}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub;->registerXmppCallBackListener(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;)I

    move-result v3

    .line 53
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;
    .end local v3    # "_result":I
    :sswitch_2
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2XmppListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub;->unRegisterXmppCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;)I

    move-result v3

    .line 63
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppCallBack;
    .end local v3    # "_result":I
    :sswitch_3
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2XmppListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2XmppListener$Stub;->sendCustomXmppMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
