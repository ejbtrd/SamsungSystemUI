.class public final Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;
.super Ljava/lang/Object;
.source "KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/biometrics/KeyguardBiometricView;",
        ">;"
    }
.end annotation


# instance fields
.field private final rootViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;->rootViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;)",
            "Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;

    invoke-direct {v0, p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesKeyguardBiometricView(Landroid/view/ViewGroup;)Lcom/android/keyguard/biometrics/KeyguardBiometricView;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule;->providesKeyguardBiometricView(Landroid/view/ViewGroup;)Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/biometrics/KeyguardBiometricView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;->rootViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;->providesKeyguardBiometricView(Landroid/view/ViewGroup;)Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardBiometricViewFactory;->get()Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    move-result-object p0

    return-object p0
.end method
