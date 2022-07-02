.class public final synthetic Lcom/android/systemui/BatteryMeterView$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/BatteryMeterView$2;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/BatteryMeterView$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/BatteryMeterView$2;

    iput p2, p0, Lcom/android/systemui/BatteryMeterView$2$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$2$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/BatteryMeterView$2;

    iget p0, p0, Lcom/android/systemui/BatteryMeterView$2$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/systemui/BatteryMeterView$2;->$r8$lambda$V2IcooLrDK7iHUfR38L15Qx8tRw(Lcom/android/systemui/BatteryMeterView$2;I)V

    return-void
.end method
