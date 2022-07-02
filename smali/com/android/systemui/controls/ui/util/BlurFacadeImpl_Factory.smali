.class public final Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;
.super Ljava/lang/Object;
.source "BlurFacadeImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final controlsRuneWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceStateWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;",
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
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;->controlsRuneWrapperProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;->deviceStateWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/util/ControlsRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;",
            ">;)",
            "Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;)Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;-><init>(Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;->controlsRuneWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;->deviceStateWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;

    invoke-static {v0, p0}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;->newInstance(Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/DeviceStateWrapper;)Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/util/BlurFacadeImpl_Factory;->get()Lcom/android/systemui/controls/ui/util/BlurFacadeImpl;

    move-result-object p0

    return-object p0
.end method
