.class public final Lcom/android/systemui/qs/bar/BarFactory_Factory;
.super Ljava/lang/Object;
.source "BarFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/qs/bar/BarFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final brightnessBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BrightnessBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaDevicesBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MediaDevicesBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlayerBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/QSMediaPlayerBar;",
            ">;"
        }
    .end annotation
.end field

.field private final multiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BrightnessBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MediaDevicesBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/QSMediaPlayerBar;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarFactory_Factory;->brightnessBarProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarFactory_Factory;->mediaDevicesBarProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarFactory_Factory;->multiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/qs/bar/BarFactory_Factory;->mediaPlayerBarProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/bar/BarFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BrightnessBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MediaDevicesBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/QSMediaPlayerBar;",
            ">;)",
            "Lcom/android/systemui/qs/bar/BarFactory_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/systemui/qs/bar/BarFactory_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/qs/bar/BarFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/bar/BarFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BrightnessBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MediaDevicesBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/QSMediaPlayerBar;",
            ">;)",
            "Lcom/android/systemui/qs/bar/BarFactory;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/android/systemui/qs/bar/BarFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/qs/bar/BarFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/qs/bar/BarFactory;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarFactory_Factory;->brightnessBarProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarFactory_Factory;->mediaDevicesBarProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarFactory_Factory;->multiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory_Factory;->mediaPlayerBarProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/qs/bar/BarFactory_Factory;->newInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/bar/BarFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarFactory_Factory;->get()Lcom/android/systemui/qs/bar/BarFactory;

    move-result-object p0

    return-object p0
.end method
