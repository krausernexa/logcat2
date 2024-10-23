.class public abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub;
.super Landroid/os/Binder;
.source "IAlpha2BlueToothSerialPortService.java"

# interfaces
.implements Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2BlueToothSerialPortService"

.field static final TRANSACTION_registerSerialPortRcvListener:I = 0x1

.field static final TRANSACTION_sendATCMD:I = 0x4

.field static final TRANSACTION_sendCommand:I = 0x3

.field static final TRANSACTION_unRegisterSerialPortRcvListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2BlueToothSerialPortService"

    invoke-virtual {p0, p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;
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
    const-string v1, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2BlueToothSerialPortService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2BlueToothSerialPortService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2BlueToothSerialPortService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub;->registerSerialPortRcvListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;)I

    move-result v4

    .line 51
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;
    .end local v4    # "_result":I
    :sswitch_2
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2BlueToothSerialPortService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub;->unRegisterSerialPortRcvListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;)I

    move-result v4

    .line 61
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2SerialPortRcvClient;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2BlueToothSerialPortService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 71
    .local v0, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 73
    .local v1, "_arg1":B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 75
    .local v2, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub;->sendCommand(BB[BI)Z

    move-result v4

    .line 77
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v4, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 83
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":[B
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v5, "com.ubtechinc.alpha2serverlib.aidlinterface.IAlpha2BlueToothSerialPortService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlpha2BlueToothSerialPortService$Stub;->sendATCMD(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
