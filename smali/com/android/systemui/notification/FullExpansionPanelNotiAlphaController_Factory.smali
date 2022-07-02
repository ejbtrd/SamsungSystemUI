.class public final Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;
.super Ljava/lang/Object;
.source "FullExpansionPanelNotiAlphaController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyguardTouchAnimatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
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
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;->keyguardTouchAnimatorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
            ">;)",
            "Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;
    .locals 1

    .line 36
    new-instance v0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    invoke-direct {v0, p0}, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;->keyguardTouchAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-static {p0}, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;->newInstance(Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;)Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController_Factory;->get()Lcom/android/systemui/notification/FullExpansionPanelNotiAlphaController;

    move-result-object p0

    return-object p0
.end method
