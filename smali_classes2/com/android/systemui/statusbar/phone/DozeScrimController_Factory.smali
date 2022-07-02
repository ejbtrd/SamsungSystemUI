.class public final Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;
.super Ljava/lang/Object;
.source "DozeScrimController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/DozeScrimController;",
        ">;"
    }
.end annotation


# instance fields
.field private final dozeLogProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;"
        }
    .end annotation
.end field

.field private final dozeParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
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
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/doze/DozeLog;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/doze/DozeLog;)Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/doze/DozeLog;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->dozeParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->dozeLogProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeLog;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->newInstance(Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/doze/DozeLog;)Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;->get()Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-result-object p0

    return-object p0
.end method