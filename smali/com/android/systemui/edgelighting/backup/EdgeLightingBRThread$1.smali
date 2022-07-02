.class Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;
.super Ljava/lang/Object;
.source "EdgeLightingBRThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->restoreCocktailBarFiles(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/backup/BRUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    iget-boolean v1, v1, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/backup/BRUtils;->restoreSettingValue(Z)V

    .line 196
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$1;->this$0:Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->access$000(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;III)V

    return-void
.end method
