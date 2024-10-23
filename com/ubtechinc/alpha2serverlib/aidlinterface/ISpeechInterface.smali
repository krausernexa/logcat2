.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface;
.super Ljava/lang/Object;
.source "ISpeechInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract initSpeechGrammar(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarInitListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEnglishUnderstand(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishUnderstandListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPlay(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPlayHigh(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSpeech(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStopPlay(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStopSpeech(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTextUnderstand(Ljava/lang/String;Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaTextUnderstandListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSpeechCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnglishOfflineListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/IAlphaEnglishOfflineUnderstandListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRecognizedLanguage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setSelfInterrupt(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setStartEarLed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setVoiceName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setWakeState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSpeechGrammar(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startSpeechNoWakeup(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSpeechAndEnterIdleMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSpeechGrammar()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterSpeechCallBackListener(Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechCallBackListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
