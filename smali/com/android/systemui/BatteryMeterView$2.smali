.class Lcom/android/systemui/BatteryMeterView$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public static synthetic $r8$lambda$V2IcooLrDK7iHUfR38L15Qx8tRw(Lcom/android/systemui/BatteryMeterView$2;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$2;->lambda$onUserSwitched$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method

.method private synthetic lambda$onUserSwitched$0(I)V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$300(Lcom/android/systemui/BatteryMeterView;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    .line 279
    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$400(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_battery_percentage"

    const/4 v2, -0x1

    .line 278
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move v0, p1

    .line 289
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {p0, v0}, Lcom/android/systemui/BatteryMeterView;->access$500(Lcom/android/systemui/BatteryMeterView;Z)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0, p1}, Lcom/android/systemui/BatteryMeterView;->access$202(Lcom/android/systemui/BatteryMeterView;I)I

    .line 276
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2;->this$0:Lcom/android/systemui/BatteryMeterView;

    new-instance v1, Lcom/android/systemui/BatteryMeterView$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/BatteryMeterView$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/BatteryMeterView$2;I)V

    const-wide/16 p0, 0x1388

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
