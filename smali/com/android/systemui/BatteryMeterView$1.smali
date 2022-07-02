.class Lcom/android/systemui/BatteryMeterView$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateStatusBarBatteryColour()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$000(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/SamsungBatteryMeterDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {p0}, Lcom/android/systemui/BatteryMeterView;->access$000(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/SamsungBatteryMeterDrawable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/SamsungBatteryMeterDrawable;->updateStatusBarBatteryColour()V

    :cond_0
    return-void
.end method
