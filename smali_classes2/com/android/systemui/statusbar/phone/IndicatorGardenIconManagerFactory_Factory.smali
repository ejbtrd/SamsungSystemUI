.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;
.super Ljava/lang/Object;
.source "IndicatorGardenIconManagerFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
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
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;->statusBarProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;->newInstance(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory_Factory;->get()Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    move-result-object p0

    return-object p0
.end method
