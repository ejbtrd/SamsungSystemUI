.class public Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;
.super Ljava/lang/Object;
.source "NaturalSwitchingAlgorithm.java"


# instance fields
.field private mDockSide:I

.field private mDragTargetWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field

.field private mDropSide:I

.field private mPushRegion:I

.field private mShrunkWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field

.field private mSplitCreateMode:I
    .annotation build Landroid/app/ActivityTaskManager$SplitCreateMode;
    .end annotation
.end field

.field private mSwapWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field

.field private mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

.field private mToWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field

.field private mUseSingleNonTarget:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDockSide:I

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 52
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    .line 54
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    .line 56
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 58
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    .line 60
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mPushRegion:I

    return-void
.end method

.method private static createModeFromDockSide(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method private static createModeFromDropSide(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    return v1
.end method

.method private static createModeFromPushRegion(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v2

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    return v1
.end method


# virtual methods
.method public getSplitCreateMode()I
    .locals 0
    .annotation build Landroid/app/ActivityTaskManager$SplitCreateMode;
    .end annotation

    .line 340
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    return p0
.end method

.method public getToWindowingMode()I
    .locals 0
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation

    .line 335
    iget p0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    return p0
.end method

.method public init(Lcom/android/wm/shell/draganddrop/TaskVisibility;I)V
    .locals 2

    .line 65
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    .line 66
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isFullsceenVisible()Z

    move-result p1

    if-nez p1, :cond_1

    .line 68
    :cond_0
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isTwoUp()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mUseSingleNonTarget:Z

    .line 69
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getDockSide()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDockSide:I

    .line 70
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    return-void
.end method

.method public onNaturalSwitchingStarted()V
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 75
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    :cond_0
    return-void
.end method

.method public update(IIZ)V
    .locals 7

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->updateForPush(I)V

    .line 131
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    if-ne v0, p2, :cond_0

    return-void

    .line 134
    :cond_0
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 135
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    const/4 v0, 0x5

    if-nez p1, :cond_1

    .line 137
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    const/4 p1, -0x1

    .line 138
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    return-void

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mUseSingleNonTarget:Z

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eqz v1, :cond_b

    .line 142
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isSupportOnlyTwoUpMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 143
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->isHorizontalDivision()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    iget p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne p2, v3, :cond_2

    move v4, v5

    .line 147
    :cond_2
    iput v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_0

    .line 149
    :cond_3
    iget p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDockSide:I

    if-ne p2, v2, :cond_5

    .line 150
    iget p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne p2, v2, :cond_4

    move v4, v5

    .line 152
    :cond_4
    iput v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_0

    :cond_5
    if-ne p2, v5, :cond_7

    .line 154
    iget p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne p2, v4, :cond_6

    move v4, v5

    .line 156
    :cond_6
    iput v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    :cond_7
    :goto_0
    if-eqz p1, :cond_8

    move v3, v5

    .line 160
    :cond_8
    iput v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    return-void

    :cond_9
    if-eqz p3, :cond_a

    .line 164
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 165
    iget p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->createModeFromDropSide(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_1

    .line 167
    :cond_a
    iget p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 168
    iget p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDockSide:I

    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->createModeFromDockSide(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    :goto_1
    return-void

    .line 173
    :cond_b
    iget p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDockSide:I

    const/16 v1, 0xc

    if-eq p3, v2, :cond_24

    const/16 v6, 0x8

    if-eq p3, v3, :cond_1c

    if-eq p3, v5, :cond_14

    if-eq p3, v4, :cond_c

    goto/16 :goto_a

    .line 259
    :cond_c
    iget p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    if-ne p3, v4, :cond_10

    if-ne p2, v5, :cond_e

    if-ne p1, v3, :cond_d

    goto :goto_2

    :cond_d
    move v5, v1

    .line 263
    :goto_2
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 264
    iput v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto/16 :goto_a

    :cond_e
    if-ne p1, v3, :cond_f

    move v5, v1

    .line 268
    :cond_f
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 269
    iput v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto/16 :goto_a

    :cond_10
    if-ne p2, v4, :cond_12

    if-ne p1, v2, :cond_11

    move v1, v5

    .line 275
    :cond_11
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 276
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto/16 :goto_a

    :cond_12
    if-ne p1, v2, :cond_13

    move v5, v1

    .line 280
    :cond_13
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 281
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto/16 :goto_a

    .line 231
    :cond_14
    iget p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    if-ne p3, v4, :cond_18

    if-ne p2, v5, :cond_16

    if-ne p1, v2, :cond_15

    move v1, v5

    .line 235
    :cond_15
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 236
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto/16 :goto_a

    :cond_16
    if-ne p1, v2, :cond_17

    move v5, v1

    .line 240
    :cond_17
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 241
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto/16 :goto_a

    :cond_18
    if-ne p2, v4, :cond_1a

    if-ne p1, v6, :cond_19

    goto :goto_3

    :cond_19
    move v5, v1

    .line 247
    :goto_3
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 248
    iput v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto/16 :goto_a

    :cond_1a
    if-ne p1, v6, :cond_1b

    move v5, v1

    .line 252
    :cond_1b
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 253
    iput v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto/16 :goto_a

    .line 203
    :cond_1c
    iget p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    if-ne p3, v4, :cond_20

    if-ne p2, v5, :cond_1e

    if-ne p1, v6, :cond_1d

    goto :goto_4

    :cond_1d
    move v5, v1

    .line 207
    :goto_4
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 208
    iput v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_a

    :cond_1e
    if-ne p1, v6, :cond_1f

    move v5, v1

    .line 212
    :cond_1f
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 213
    iput v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_a

    :cond_20
    if-ne p2, v4, :cond_22

    if-ne p1, v4, :cond_21

    goto :goto_5

    :cond_21
    move v5, v1

    .line 219
    :goto_5
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 220
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_a

    :cond_22
    if-ne p1, v4, :cond_23

    goto :goto_6

    :cond_23
    move v1, v5

    .line 224
    :goto_6
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 225
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_a

    .line 175
    :cond_24
    iget p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    if-ne p3, v4, :cond_28

    if-ne p2, v5, :cond_26

    if-ne p1, v4, :cond_25

    goto :goto_7

    :cond_25
    move v5, v1

    .line 179
    :goto_7
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 180
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_a

    :cond_26
    if-ne p1, v4, :cond_27

    goto :goto_8

    :cond_27
    move v1, v5

    .line 184
    :goto_8
    iput v1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 185
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_a

    :cond_28
    if-ne p2, v4, :cond_2a

    if-ne p1, v3, :cond_29

    goto :goto_9

    :cond_29
    move v5, v1

    .line 191
    :goto_9
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 192
    iput v4, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_a

    :cond_2a
    if-ne p1, v3, :cond_2b

    move v5, v1

    .line 196
    :cond_2b
    iput v5, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 197
    iput v3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    :goto_a
    return-void
.end method

.method public updateForPush(I)V
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mPushRegion:I

    if-eq v0, p1, :cond_1

    .line 82
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mPushRegion:I

    if-nez p1, :cond_0

    const/4 p1, 0x5

    .line 84
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    const/4 p1, -0x1

    .line 85
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 87
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    .line 88
    invoke-static {p1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->createModeFromPushRegion(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    .line 90
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateForSwap(IIILandroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 98
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->update(IIZ)V

    return-void

    .line 102
    :cond_0
    iput v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    .line 103
    iget p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne p3, p2, :cond_1

    iget p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    if-ne p3, p1, :cond_1

    if-eqz p1, :cond_1

    return-void

    .line 107
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->updateForPush(I)V

    .line 108
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    .line 109
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDropSide:I

    .line 110
    iget p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDockSide:I

    invoke-static {p2}, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->createModeFromDockSide(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    if-nez p1, :cond_5

    .line 112
    iget p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    const/4 p2, 0x5

    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    .line 113
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/draganddrop/TaskVisibility;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 115
    invoke-static {p4, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p4, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 118
    :cond_2
    iput p3, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_1

    .line 116
    :cond_3
    :goto_0
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_1

    .line 122
    :cond_4
    iput p2, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_1

    .line 125
    :cond_5
    iput p1, p0, Lcom/android/wm/shell/draganddrop/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    :goto_1
    return-void
.end method
