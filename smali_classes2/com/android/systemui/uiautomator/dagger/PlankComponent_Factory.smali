.class public final Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;
.super Ljava/lang/Object;
.source "PlankComponent_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/uiautomator/dagger/PlankComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final featureEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final protocolManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/protocol/ProtocolManager;",
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
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/protocol/ProtocolManager;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;->featureEnabledProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;->protocolManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/uiautomator/protocol/ProtocolManager;",
            ">;)",
            "Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(ZLdagger/Lazy;)Lcom/android/systemui/uiautomator/dagger/PlankComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/uiautomator/protocol/ProtocolManager;",
            ">;)",
            "Lcom/android/systemui/uiautomator/dagger/PlankComponent;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/android/systemui/uiautomator/dagger/PlankComponent;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/uiautomator/dagger/PlankComponent;-><init>(ZLdagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/uiautomator/dagger/PlankComponent;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;->featureEnabledProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;->protocolManagerProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;->newInstance(ZLdagger/Lazy;)Lcom/android/systemui/uiautomator/dagger/PlankComponent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/dagger/PlankComponent_Factory;->get()Lcom/android/systemui/uiautomator/dagger/PlankComponent;

    move-result-object p0

    return-object p0
.end method
