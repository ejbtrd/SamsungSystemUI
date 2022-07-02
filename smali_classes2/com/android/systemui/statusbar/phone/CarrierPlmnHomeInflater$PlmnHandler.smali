.class Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;
.super Landroid/os/Handler;
.source "CarrierPlmnHomeInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlmnHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$1;)V
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater$PlmnHandler;-><init>(Lcom/android/systemui/statusbar/phone/CarrierPlmnHomeInflater;)V

    return-void
.end method
