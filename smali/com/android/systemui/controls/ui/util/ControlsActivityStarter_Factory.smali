.class public final Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;
.super Ljava/lang/Object;
.source "ControlsActivityStarter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final shadeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsUtil;",
            ">;)",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/controls/ui/util/ControlsUtil;)Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
    .locals 1

    .line 46
    new-instance v0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;-><init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/controls/ui/util/ControlsUtil;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;->shadeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;->controlsUtilProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/util/ControlsUtil;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;->newInstance(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/controls/ui/util/ControlsUtil;)Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter_Factory;->get()Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    move-result-object p0

    return-object p0
.end method
