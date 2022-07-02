.class Lcom/android/systemui/power/PowerUI$11;
.super Landroid/database/ContentObserver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->checkTurnOffPsmNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 2090
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$11;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-object p3, p0, Lcom/android/systemui/power/PowerUI$11;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 2093
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$11;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$11;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "turn_off_psm_trigger_level"

    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/systemui/power/PowerUI;->access$5602(Lcom/android/systemui/power/PowerUI;I)I

    return-void
.end method
