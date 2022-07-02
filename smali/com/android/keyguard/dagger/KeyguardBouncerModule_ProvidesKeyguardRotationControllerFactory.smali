.class public final Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;
.super Ljava/lang/Object;
.source "KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/KeyguardRotationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;

    invoke-direct {v0, p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesKeyguardRotationController(Landroid/content/Context;)Lcom/android/keyguard/KeyguardRotationController;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule;->providesKeyguardRotationController(Landroid/content/Context;)Lcom/android/keyguard/KeyguardRotationController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardRotationController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/KeyguardRotationController;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;->providesKeyguardRotationController(Landroid/content/Context;)Lcom/android/keyguard/KeyguardRotationController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesKeyguardRotationControllerFactory;->get()Lcom/android/keyguard/KeyguardRotationController;

    move-result-object p0

    return-object p0
.end method
