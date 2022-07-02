.class public final Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;
.super Ljava/lang/Object;
.source "KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/KeyguardSecurityViewFlipper;",
        ">;"
    }
.end annotation


# instance fields
.field private final containerViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
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
            "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;->containerViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
            ">;)",
            "Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;

    invoke-direct {v0, p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesKeyguardSecurityViewFlipper(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule;->providesKeyguardSecurityViewFlipper(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/KeyguardSecurityViewFlipper;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;->containerViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-static {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;->providesKeyguardSecurityViewFlipper(Lcom/android/keyguard/KeyguardSecSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardSecurityViewFlipperFactory;->get()Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-result-object p0

    return-object p0
.end method
