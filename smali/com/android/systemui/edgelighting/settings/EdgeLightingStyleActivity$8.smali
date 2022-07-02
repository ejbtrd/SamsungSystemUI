.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;
.super Ljava/lang/Object;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showColorPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1277
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " onDismiss "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$100(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    return-void
.end method
