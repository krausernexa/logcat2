.class public interface abstract Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener;
.super Ljava/lang/Object;
.source "ISpeechGrammarListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alpha2serverlib/aidlinterface/ISpeechGrammarListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSpeechGrammarError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSpeechGrammarResult(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
