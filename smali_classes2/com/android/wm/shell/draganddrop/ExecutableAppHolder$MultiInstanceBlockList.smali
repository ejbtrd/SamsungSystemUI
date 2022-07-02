.class Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;
.super Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;
.source "ExecutableAppHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiInstanceBlockList"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 812
    sget v0, Lcom/android/wm/shell/R$array;->drag_and_split_multi_instance_block_list_until_support_aosp_multi_instance:I

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method isInBlockListUntilSupportAospMultiInstance(Ljava/lang/String;)Z
    .locals 0

    .line 816
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
