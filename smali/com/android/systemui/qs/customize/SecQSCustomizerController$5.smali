.class Lcom/android/systemui/qs/customize/SecQSCustomizerController$5;
.super Ljava/lang/Object;
.source "SecQSCustomizerController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizerController;->showResetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "SecQSCustomizerController"

    const-string p2, "RESET"

    .line 370
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$2500(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    .line 373
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1021"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
