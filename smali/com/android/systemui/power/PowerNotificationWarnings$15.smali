.class Lcom/android/systemui/power/PowerNotificationWarnings$15;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showWillOverheatShutdownPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    .line 2349
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$15;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2352
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$15;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    return-void
.end method
