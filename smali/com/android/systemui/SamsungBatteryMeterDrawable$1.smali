.class Lcom/android/systemui/SamsungBatteryMeterDrawable$1;
.super Landroid/os/Handler;
.source "SamsungBatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SamsungBatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SamsungBatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SamsungBatteryMeterDrawable;Landroid/os/Looper;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 126
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    invoke-static {p1}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->access$000(Lcom/android/systemui/SamsungBatteryMeterDrawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    invoke-static {p1}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->access$100(Lcom/android/systemui/SamsungBatteryMeterDrawable;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->access$102(Lcom/android/systemui/SamsungBatteryMeterDrawable;Z)Z

    .line 131
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/SamsungBatteryMeterDrawable$1;->this$0:Lcom/android/systemui/SamsungBatteryMeterDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->postInvalidate()V

    :goto_0
    return-void
.end method
