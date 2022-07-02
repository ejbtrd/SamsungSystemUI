.class Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitAdjacentEventListener;
.super Lcom/samsung/android/multiwindow/ISplitAdjacentCallback$Stub;
.source "LegacySplitScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitAdjacentEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V
    .locals 0

    .line 1935
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitAdjacentEventListener;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/ISplitAdjacentCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$1;)V
    .locals 0

    .line 1935
    invoke-direct {p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitAdjacentEventListener;-><init>(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;)V

    return-void
.end method


# virtual methods
.method public onAdjacentLaunched()V
    .locals 1

    .line 1938
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController$SplitAdjacentEventListener;->this$0:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->access$902(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;Z)Z

    return-void
.end method
