.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;
.super Ljava/lang/Object;
.source "FaceWidgetLockPatternUtilsWrapper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final lockPatternUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;"
        }
    .end annotation
.end field

.field private final updateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;->updateMonitorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;)",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;
    .locals 1

    .line 42
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;->updateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;->newInstance(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper_Factory;->get()Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;

    move-result-object p0

    return-object p0
.end method
