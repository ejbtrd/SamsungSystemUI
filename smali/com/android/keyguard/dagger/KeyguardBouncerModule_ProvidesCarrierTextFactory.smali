.class public final Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;
.super Ljava/lang/Object;
.source "KeyguardBouncerModule_ProvidesCarrierTextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/CarrierText;",
        ">;"
    }
.end annotation


# instance fields
.field private final hostViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardHostView;",
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
            "Lcom/android/keyguard/KeyguardHostView;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;->hostViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardHostView;",
            ">;)",
            "Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;

    invoke-direct {v0, p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesCarrierText(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule;->providesCarrierText(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierText;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/CarrierText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;->hostViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardHostView;

    invoke-static {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;->providesCarrierText(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/dagger/KeyguardBouncerModule_ProvidesCarrierTextFactory;->get()Lcom/android/keyguard/CarrierText;

    move-result-object p0

    return-object p0
.end method
