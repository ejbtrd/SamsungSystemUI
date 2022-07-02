.class public Lcom/android/systemui/qs/bar/BarFactory;
.super Ljava/lang/Object;
.source "BarFactory.java"


# instance fields
.field private final mBrightnessBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/BrightnessBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaDevicesBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MediaDevicesBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mQSMediaPlayerBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/bar/QSMediaPlayerBar;",
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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMediaDevicesBarProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessBarProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/systemui/qs/bar/BarFactory;->mQSMediaPlayerBarProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public createBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/BarItem;
    .locals 2

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "MediaDevices"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "MultiSIMPreferredSlot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "QSMediaPlayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "Brightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMediaDevicesBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BarItem;

    return-object p0

    .line 56
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mMultiSIMPreferredSlotBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BarItem;

    return-object p0

    .line 58
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mQSMediaPlayerBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BarItem;

    return-object p0

    .line 52
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarFactory;->mBrightnessBarProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/BarItem;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x628bf78f -> :sswitch_3
        0x3fc7d063 -> :sswitch_2
        0x4f8be5c1 -> :sswitch_1
        0x67ee4079 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
