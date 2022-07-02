.class Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;
.super Ljava/lang/Object;
.source "DragAndDropPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LaunchOptions"
.end annotation


# instance fields
.field private final mPosition:I

.field private final mStage:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 1420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->mStage:I

    .line 1422
    iput p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->mPosition:I

    return-void
.end method

.method public static create(II)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;
    .locals 1

    .line 1417
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method getPosition()I
    .locals 0

    .line 1430
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->mPosition:I

    return p0
.end method

.method getStage()I
    .locals 0

    .line 1426
    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->mStage:I

    return p0
.end method
