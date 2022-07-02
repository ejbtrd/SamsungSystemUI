.class public interface abstract Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;
.super Ljava/lang/Object;
.source "IPasswordPolicy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;
    }
.end annotation


# virtual methods
.method public abstract isChangeRequestedAsUser(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
