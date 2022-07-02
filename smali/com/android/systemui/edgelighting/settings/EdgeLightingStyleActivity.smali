.class public Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListViewHolder;,
        Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;,
        Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;,
        Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;
    }
.end annotation


# static fields
.field private static sConfigured:Z = false

.field private static sFlipFont:I


# instance fields
.field private final DEFAULT_EDGE_LIGHTING_DURATION:I

.field private final EDGE_LIGHTING_COLOR_GRIDVIEW_COLUMN_NUM:I

.field private final EDGE_LIGHTING_EFFECT_GRIDVIEW_COLUMN_NUM:I

.field private final EDGE_LIGHTING_EFFECT_GRIDVIEW_ROW_NUM:I

.field private final MSG_PREVIEW_EDGE_LIGHTING_HIDE:I

.field private final MSG_PREVIEW_EDGE_LIGHTING_SHOW:I

.field private final MSG_PREVIEW_EDGE_LIGHTING_UPDATE:I

.field private final TAB_ADVANCED:I

.field private final TAB_COLOR:I

.field private final TAB_EFFECT:I

.field private final TAB_UNKNOWN:I

.field private final TAG:Ljava/lang/String;

.field private mActionBar:Landroid/widget/LinearLayout;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mApplyBtn:Landroid/widget/Button;

.field private mAutoCheckBox:Landroid/widget/CheckBox;

.field private mCancelBtn:Landroid/widget/Button;

.field mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

.field private mColorCheckBox:Landroid/widget/CheckBox;

.field private mColorGridView:Landroid/widget/GridView;

.field private mColorPickerDialog:Landroidx/picker/app/SeslColorPickerDialog;

.field mColorSetListener:Landroidx/picker/app/SeslColorPickerDialog$OnColorSetListener;

.field private mColorTabLayout:Landroid/widget/LinearLayout;

.field private mCurDuration:I

.field private mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

.field private mCurFocusOption:Landroid/view/View;

.field private mCurThickness:I

.field private mCurTransparency:I

.field mEdgeLightingCallBack:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

.field private mEdgeLightingEffectColumn:I

.field mEffectAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

.field private mEffectGridView:Landroid/widget/GridView;

.field mHandler:Landroid/os/Handler;

.field private mIsStartByRoutine:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

.field private mMainRoundedLayout:Landroid/widget/RelativeLayout;

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOptionContainer:Landroid/widget/LinearLayout;

.field private mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

.field private mPreviewMode:Z

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mRoutineEffectColor:I

.field private mRoutineEffectType:Ljava/lang/String;

.field private mSelectedColorIndex:I

.field private mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

.field private mSubOptionColorLayout:Landroid/view/ViewGroup;

.field private mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

.field private mSubOptionRoot:Landroid/widget/RelativeLayout;

.field private mTabLayout:Lcom/google/android/material/tabs/TabLayout;

.field mTabListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 110
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 112
    const-class v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    .line 116
    new-instance v1, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-direct {v1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    .line 133
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurFocusOption:Landroid/view/View;

    const/4 v1, 0x0

    .line 157
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 159
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 161
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 163
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 167
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    .line 169
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectType:Ljava/lang/String;

    const/4 v2, 0x1

    .line 179
    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->MSG_PREVIEW_EDGE_LIGHTING_SHOW:I

    const/4 v3, 0x2

    .line 180
    iput v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->MSG_PREVIEW_EDGE_LIGHTING_UPDATE:I

    const/4 v4, 0x3

    .line 181
    iput v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->MSG_PREVIEW_EDGE_LIGHTING_HIDE:I

    const/4 v4, -0x1

    .line 183
    iput v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAB_UNKNOWN:I

    .line 184
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAB_EFFECT:I

    .line 185
    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAB_COLOR:I

    .line 186
    iput v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAB_ADVANCED:I

    .line 188
    iput v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    const/16 v1, 0xfa0

    .line 190
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->DEFAULT_EDGE_LIGHTING_DURATION:I

    const/4 v1, 0x6

    .line 192
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->EDGE_LIGHTING_COLOR_GRIDVIEW_COLUMN_NUM:I

    .line 194
    iput v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->EDGE_LIGHTING_EFFECT_GRIDVIEW_ROW_NUM:I

    const/4 v1, 0x4

    .line 196
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->EDGE_LIGHTING_EFFECT_GRIDVIEW_COLUMN_NUM:I

    .line 198
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    .line 204
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 237
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    .line 430
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 539
    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingCallBack:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    .line 667
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 805
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$6;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 1319
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$10;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorSetListener:Landroidx/picker/app/SeslColorPickerDialog$OnColorSetListener;

    .line 1439
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$12;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->playEdgeLightingByHandler()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Z)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarLayout(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideNavigationBar()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarOption(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/GridView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;II)I
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->calculateColumnCount(Landroid/widget/GridView;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/widget/GridView;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->setDynamicWidth(Landroid/widget/GridView;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateTabLayout()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getLightingEffectIndex()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/GridView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showColorPickerDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updatePreviewEdgeLighting()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    return p0
.end method

.method static synthetic access$2602(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;[I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    return p0
.end method

.method static synthetic access$3002(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    return p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    return p1
.end method

.method static synthetic access$3202(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    return p0
.end method

.method private calculateColumnCount(Landroid/widget/GridView;II)I
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1549
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1550
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1551
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1553
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1554
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1555
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->sec_settings_content_width_ratio:I

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1556
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 1561
    :cond_0
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1562
    invoke-virtual {p1, v4, v4}, Landroid/widget/GridView;->measure(II)V

    .line 1563
    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    .line 1564
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result p1

    add-int/2addr v2, p1

    .line 1565
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/android/systemui/R$dimen;->settings_edge_lighting_style_color_option_custom_color_margin_start:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    .line 1568
    :cond_1
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingEffectColumn:I

    if-gt p3, p0, :cond_2

    return p3

    :cond_2
    mul-int/lit8 p1, p0, 0x2

    if-gt p3, p1, :cond_3

    return p0

    .line 1574
    :cond_3
    rem-int/lit8 p0, p3, 0x2

    if-nez p0, :cond_4

    .line 1575
    div-int/2addr p3, p2

    return p3

    .line 1577
    :cond_4
    div-int/2addr p3, p2

    add-int/2addr p3, v0

    return p3
.end method

.method private firstDrawBottomBarLayout()V
    .locals 1

    const/16 v0, 0x12c

    .line 678
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    const/4 v0, 0x0

    .line 679
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarOption(I)V

    return-void
.end method

.method private getCustomColor(Z)I
    .locals 1

    const v0, -0xb37941

    if-eqz p1, :cond_1

    .line 601
    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0

    .line 603
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "edgelighting_custom_color"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getEdgeLightingColor()I
    .locals 2

    .line 587
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    if-nez v0, :cond_0

    const p0, -0xb37941

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 590
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/DeviceColorMonitor;->getDeviceWallPaperColorIndex(Landroid/content/ContentResolver;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 592
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    move-result p0

    goto :goto_0

    .line 594
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStylePreDefineColor(Landroid/content/Context;IZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getLightingEffectIndex()I
    .locals 2

    .line 1131
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getStyleDisplayOrder(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private hideBottomBarLayout(Z)V
    .locals 14

    .line 716
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 719
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 722
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 724
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->setting_edge_lighting_style_transition_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 727
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    neg-float v0, v0

    aput v0, v4, v1

    const-string/jumbo v6, "translationY"

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v7, 0x12c

    .line 728
    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 729
    iget-object v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    const-string v10, "alpha"

    invoke-static {v4, v10, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v11, 0x96

    .line 730
    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 731
    iget-object v9, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    new-array v13, v3, [F

    aput v2, v13, v5

    aput v0, v13, v1

    invoke-static {v9, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 732
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 733
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    new-array v6, v3, [F

    fill-array-data v6, :array_1

    invoke-static {v2, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 734
    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 736
    iget-object v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e2e147b    # 0.17f

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 737
    iget-object v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object p1, v7, v1

    aput-object v2, v7, v3

    const/4 p1, 0x3

    aput-object v4, v7, p1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 739
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$5;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 761
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 763
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 764
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 765
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 766
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 767
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideNavigationBar()V

    .line 769
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    .line 770
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hideBottomBarSubOption(I)Z
    .locals 4

    .line 854
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 859
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 860
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v0, v1

    .line 864
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 865
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    if-ltz p1, :cond_3

    .line 870
    iput p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    :cond_3
    return v1
.end method

.method private hideNavigationBar()V
    .locals 1

    .line 782
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 783
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit8 p0, p0, 0x2

    or-int/lit16 p0, p0, 0x800

    .line 782
    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private hidePreviewEdgeLighting()V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->stopPreview()V

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    :cond_0
    return-void
.end method

.method private hidePreviewEdgeLighting(I)V
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePreviewEdgeLighting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private init()V
    .locals 6

    .line 305
    sget v0, Lcom/android/systemui/R$layout;->setting_edge_lighting_style:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    .line 311
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 312
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v1, -0x1000000

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const v1, 0x106000c

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 319
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getStyleByKey(Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initColorTypeIndex(Landroid/content/Context;)V

    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 327
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingThickness(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingTransparency(Landroid/content/ContentResolver;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 329
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->loadEdgeLightingDurationOptionType(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    if-eqz v0, :cond_1

    .line 332
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->loadRoutineEdgeLightingSetting()V

    .line 335
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->main_root_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 336
    sget v0, Lcom/android/systemui/R$id;->option_main_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mOptionContainer:Landroid/widget/LinearLayout;

    .line 337
    sget v0, Lcom/android/systemui/R$id;->action_bar_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    .line 338
    sget v0, Lcom/android/systemui/R$id;->style_apply_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mApplyBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    .line 339
    invoke-virtual {v0, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 340
    sget v0, Lcom/android/systemui/R$id;->style_cancel_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCancelBtn:Landroid/widget/Button;

    .line 341
    invoke-virtual {v0, v2}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mApplyBtn:Landroid/widget/Button;

    sget v3, Lcom/android/systemui/R$dimen;->settings_edge_lighting_style_action_bar_button_title_text_size:I

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCancelBtn:Landroid/widget/Button;

    invoke-static {v0, v3, v4, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    .line 348
    sget v0, Lcom/android/systemui/R$id;->style_sub_option_detail_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionRoot:Landroid/widget/RelativeLayout;

    .line 349
    sget v0, Lcom/android/systemui/R$id;->main_rounded_root:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0xf

    .line 351
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->initBottomBarLayout()V

    .line 356
    sget v0, Lcom/android/systemui/R$id;->tabs:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 357
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->seslSetSubTabStyle()V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabListener:Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    sget v3, Lcom/google/android/material/R$id;->indicator:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$drawable;->custom_sesl_tablayout_subtab_indicator_background_dark:I

    .line 362
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$color;->custom_sesl_tablayout_background_color:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    sget v3, Lcom/google/android/material/R$id;->indicator:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$drawable;->custom_sesl_tablayout_subtab_indicator_background_dark:I

    .line 368
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$color;->custom_sesl_tablayout_background_color:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    sget v4, Lcom/google/android/material/R$id;->indicator:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v5, Lcom/android/systemui/R$drawable;->custom_sesl_tablayout_subtab_indicator_background_dark:I

    .line 374
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$color;->custom_sesl_tablayout_background_color:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 379
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    sget v3, Lcom/android/systemui/R$color;->custom_sesl_tablayout_subtab_text_color_dark:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mApplyBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    sget v0, Lcom/android/systemui/R$id;->sub_option_effect_list_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    .line 387
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 388
    sget v0, Lcom/android/systemui/R$id;->sub_option_effect_grid_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    .line 389
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 391
    sget v0, Lcom/android/systemui/R$id;->sub_option_color_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    .line 392
    sget v0, Lcom/android/systemui/R$id;->color_tab_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateLayoutAlignment()V

    .line 394
    sget v0, Lcom/android/systemui/R$id;->sub_option_color_grid_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    .line 395
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSmoothScrollbarEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 398
    sget v0, Lcom/android/systemui/R$id;->auto_check_box:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoCheckBox:Landroid/widget/CheckBox;

    .line 399
    sget v0, Lcom/android/systemui/R$id;->color_check_box:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorCheckBox:Landroid/widget/CheckBox;

    .line 400
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->settings_edge_lighting_style_action_bar_button_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCheckBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 405
    sget v0, Lcom/android/systemui/R$id;->sub_option_advanced_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->measureContentFrame()V

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->playEdgeLightingByHandler()V

    return-void
.end method

.method private initAdvancedSubOption()V
    .locals 14

    .line 1341
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget v2, Lcom/android/systemui/R$id;->transparency_seekbar:I

    .line 1342
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$string;->edge_transparency_low:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1343
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$string;->edge_transparency_high:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object v0, p0

    .line 1341
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;II)V

    .line 1346
    sget-object v8, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget v9, Lcom/android/systemui/R$id;->width_seekbar:I

    .line 1347
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->edge_lighting_thickness_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1348
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->edge_lighting_thickness_wide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x4

    move-object v7, p0

    .line 1346
    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;II)V

    .line 1351
    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget v2, Lcom/android/systemui/R$id;->duration_seekbar:I

    .line 1352
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$string;->edge_lighting_duration_short:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1353
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/android/systemui/R$string;->edge_lighting_duration_long:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object v0, p0

    .line 1351
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private initBottomBarLayout()V
    .locals 3

    .line 670
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->setting_edge_lighting_style_transition_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 671
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 672
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 673
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 674
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private loadRoutineEdgeLightingSetting()V
    .locals 8

    .line 1451
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "intent_params"

    .line 1455
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, ";"

    .line 1459
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1461
    aget-object v2, v0, v2

    const/4 v3, 0x1

    .line 1462
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 1463
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1464
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x4

    .line 1465
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    .line 1466
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1468
    iput-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectType:Ljava/lang/String;

    .line 1469
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getStyleByKey(Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 1470
    iput v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 1471
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 1472
    iput v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 1473
    iput v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 1474
    iput v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    .line 1476
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadRoutineEdgeLightingSetting() : type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",color="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",alpha="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",width="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",time="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",colorValue="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1479
    :cond_1
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 1480
    iput v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 1481
    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    .line 1482
    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    .line 1483
    iput v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    .line 1484
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const-string v0, "loadRoutineEdgeLightingSetting() : set default"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 3

    .line 1359
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 1360
    sget v0, Lcom/android/systemui/R$id;->image_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->getTitleStringID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    sget v0, Lcom/android/systemui/R$id;->seekbar_left_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    sget p3, Lcom/android/systemui/R$id;->seekbar_right_text:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    sget p3, Lcom/android/systemui/R$id;->seekbar:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SeslSeekBar;

    .line 1365
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p3, 0x1

    .line 1366
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p5, :cond_0

    .line 1368
    sget p4, Lcom/android/systemui/R$drawable;->tw_divider_accessibility_on_mtrl:I

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 1369
    sget p4, Lcom/android/systemui/R$color;->theme_font_settings_seekbar_bg_color_disabled:I

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getColor(I)I

    move-result p4

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 1371
    :cond_0
    sget p4, Lcom/android/systemui/R$color;->settings_edge_lighting_style_progress_bar_thum_color:I

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getColor(I)I

    move-result p5

    invoke-static {p5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1372
    invoke-virtual {p0, p4}, Landroid/app/Activity;->getColor(I)I

    move-result p4

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1373
    sget p4, Lcom/android/systemui/R$color;->settings_edge_lighting_style_progress_bar_background_color:I

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getColor(I)I

    move-result p4

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1374
    invoke-virtual {p2, p6}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 1375
    new-instance p4, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;

    invoke-direct {p4, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    .line 1422
    sget-object p4, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p4, p1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 1432
    :cond_1
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 1433
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$string;->edge_lighting_header_duration:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1428
    :cond_2
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 1429
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$string;->edge_lighting_header_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1424
    :cond_3
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 1425
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$string;->edge_lighting_transparency:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private measureContentFrame()V
    .locals 4

    .line 1602
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1603
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->sec_settings_side_width_ratio:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1604
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 1606
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/Utils;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    .line 1609
    sget v0, Lcom/android/systemui/R$id;->main_root_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1612
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1614
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 1615
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    .line 1618
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 1619
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1620
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private playEdgeLightingByHandler()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    return-void
.end method

.method private saveCurrentSetting()V
    .locals 7

    .line 608
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdgeLightingSaveStyleInfo"

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Effect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v3}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v2, v3}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 620
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-static {v2, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;I)V

    .line 621
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    if-nez v2, :cond_0

    .line 623
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x63

    if-ne v2, v4, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x64

    if-ne v2, v4, :cond_2

    .line 627
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    goto :goto_0

    .line 629
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingColorType(Landroid/content/ContentResolver;I)V

    .line 631
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Color="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v2, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 636
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {v2, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingThickness(Landroid/content/ContentResolver;I)V

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Width="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {p0, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingWidth(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v2, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 641
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    invoke-static {v2, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingTransparency(Landroid/content/ContentResolver;I)V

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transparency="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v2, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 646
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v2, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveEdgeLightingDurationOption(Landroid/content/Context;I)V

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "edgelighting_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 654
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/Utils;->getEffectEnglishName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "36105"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 656
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/Utils;->getColorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "36106"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    div-int/lit8 v2, v2, 0x5

    const-string v3, "36107"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 658
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    const-string v3, "36108"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 659
    iget v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    const-string v3, "36110"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 660
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 664
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scrollEffectListView(I)V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$7;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendCurrentSettingToRoutine()V
    .locals 5

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v1, p0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1493
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mRoutineEffectColor:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCurrentSettingToRoutine() data=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "label_params"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent_params"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 1507
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setDynamicWidth(Landroid/widget/GridView;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 966
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 969
    invoke-interface {v0, v2, v1, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 972
    invoke-virtual {p1, v2, v2}, Landroid/widget/GridView;->measure(II)V

    .line 973
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->settings_edge_lighting_style_option_effect_start_end_padding:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 974
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/widget/GridView;->getHorizontalSpacing()I

    move-result v1

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    .line 975
    invoke-virtual {p1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 976
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 977
    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    invoke-virtual {p1}, Landroid/widget/GridView;->requestLayout()V

    :cond_0
    return-void
.end method

.method private showAdvancedView()V
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 935
    sget v0, Lcom/android/systemui/R$id;->transparency_seekbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 937
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->transparency_seekbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v3}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 941
    sget v0, Lcom/android/systemui/R$id;->width_seekbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 943
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->width_seekbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 946
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v3}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    sget v0, Lcom/android/systemui/R$id;->duration_seekbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 949
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->duration_seekbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 952
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionAdvancedLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showBottomBarLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 683
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout(I)V

    return-void
.end method

.method private showBottomBarLayout(I)V
    .locals 16

    move-object/from16 v0, p0

    .line 687
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 688
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 689
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 690
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v1, 0x0

    .line 691
    iput-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 694
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showNavigationBar()V

    .line 696
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 697
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->setting_edge_lighting_style_transition_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 698
    iget-object v3, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x2

    new-array v5, v4, [F

    aput v1, v5, v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    const-string/jumbo v8, "translationY"

    invoke-static {v3, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v9, 0x12c

    .line 699
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 700
    iget-object v5, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mMainRoundedLayout:Landroid/widget/RelativeLayout;

    new-array v11, v4, [F

    fill-array-data v11, :array_0

    const-string v12, "alpha"

    invoke-static {v5, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v13, 0x96

    .line 701
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 702
    iget-object v11, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    new-array v15, v4, [F

    aput v1, v15, v2

    aput v7, v15, v6

    invoke-static {v11, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 703
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 704
    iget-object v7, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mActionBar:Landroid/widget/LinearLayout;

    new-array v8, v4, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 705
    invoke-virtual {v7, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 707
    iget-object v8, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move/from16 v9, p1

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 708
    iget-object v8, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3e4ccccd    # 0.2f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3e2e147b    # 0.17f

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 709
    iget-object v8, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v2

    aput-object v3, v9, v6

    aput-object v7, v9, v4

    const/4 v1, 0x3

    aput-object v5, v9, v1

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 710
    iget-object v1, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 712
    iput-boolean v2, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showBottomBarOption(I)V
    .locals 2

    .line 833
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateTabLayout()V

    if-nez p1, :cond_0

    .line 835
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    if-eqz v0, :cond_0

    .line 836
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 837
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showEffectListView()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 839
    iget v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    if-eq v1, v0, :cond_1

    .line 840
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 841
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showColorListView()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 844
    iget v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mType:I

    if-eq v1, v0, :cond_2

    .line 845
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hideBottomBarSubOption(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 846
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showAdvancedView()V

    :cond_2
    :goto_0
    return-void
.end method

.method private showColorListView()V
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionColorLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    if-nez v0, :cond_0

    .line 912
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 916
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    .line 921
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 923
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 925
    :cond_1
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    if-nez v0, :cond_2

    .line 926
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 928
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private showColorPickerDialog()V
    .locals 4

    .line 1270
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    move-result v0

    .line 1271
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getRecentlyUsedColor(Landroid/content/Context;)[I

    move-result-object v1

    .line 1273
    new-instance v2, Landroidx/picker/app/SeslColorPickerDialog;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorSetListener:Landroidx/picker/app/SeslColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, p0, v3, v0, v1}, Landroidx/picker/app/SeslColorPickerDialog;-><init>(Landroid/content/Context;Landroidx/picker/app/SeslColorPickerDialog$OnColorSetListener;I[I)V

    iput-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker/app/SeslColorPickerDialog;

    .line 1274
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$8;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker/app/SeslColorPickerDialog;

    invoke-virtual {v0}, Landroidx/picker/app/SeslColorPickerDialog;->getColorPicker()Landroidx/picker/widget/SeslColorPicker;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslColorPicker;->setOnColorChangedListener(Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;)V

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker/app/SeslColorPickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    if-eqz v1, :cond_2

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1305
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getCustomColor(Z)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    if-nez v0, :cond_1

    .line 1308
    invoke-direct {p0, v1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    goto :goto_0

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectColors([I)V

    .line 1311
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->updatePreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    .line 1314
    :goto_0
    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    :cond_2
    return-void
.end method

.method private showEffectListView()V
    .locals 9

    .line 876
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 877
    new-instance v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;-><init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    .line 878
    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 879
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->notifyDataSetChanged()V

    .line 880
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getLightingEffectIndex()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 881
    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {p0, v3, v5, v4}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->calculateColumnCount(Landroid/widget/GridView;II)I

    move-result v3

    if-le v0, v3, :cond_0

    sub-int v4, v0, v3

    goto :goto_0

    :cond_0
    move v4, v0

    .line 884
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 885
    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v6

    if-eq v6, v2, :cond_1

    if-ne v6, v5, :cond_2

    :cond_1
    sub-int v4, v3, v4

    add-int/lit8 v4, v4, -0x4

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_2

    move v4, v2

    :cond_2
    sub-int/2addr v4, v2

    if-ltz v4, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v1

    .line 893
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->setting_edge_lighting_style_grid_item_select_size:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    mul-int/2addr v4, v6

    .line 894
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcom/android/systemui/R$dimen;->settings_edge_lighting_style_effect_option_grid_horizontal_space:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 895
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_5

    add-int/lit8 v5, v3, -0x4

    .line 896
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    mul-int/2addr v6, v5

    .line 897
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    mul-int/2addr v5, v7

    .line 898
    rem-int/2addr v0, v3

    if-ne v0, v2, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->settings_edge_lighting_style_option_effect_start_end_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_2
    sub-int/2addr v5, v0

    add-int/2addr v6, v5

    sub-int/2addr v6, v4

    .line 899
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 902
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->scrollEffectListView(I)V

    goto :goto_3

    .line 904
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->scrollEffectListView(I)V

    .line 906
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSubOptionEffectLayout:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method private showNavigationBar()V
    .locals 1

    .line 774
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    and-int/lit16 v0, v0, -0x801

    .line 778
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private showPreviewEdgeLighting()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getEdgeLightingColor()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 497
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    return-void
.end method

.method private showPreviewEdgeLighting([I)V
    .locals 6

    .line 501
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting()V

    .line 503
    new-instance v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    .line 504
    check-cast v0, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effectservice/EdgeLightingDispatcher;->setForceSettingValue(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 509
    sget v1, Lcom/android/systemui/R$string;->edge_lighting_preview_content_text:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 510
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setTickerText([Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    sget v1, Lcom/android/systemui/R$drawable;->ic_stat_notify_email:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {v1, v4, v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v1

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeWidth(FI)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectColors([I)V

    .line 517
    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 518
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeAlpha(F)V

    .line 520
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showPreview : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getPreloadIndex(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectType(I)V

    .line 525
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateEdgeEffectParams(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectType(I)V

    .line 530
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    iget v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setLightingDuration(J)V

    .line 532
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {p1, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsMultiResolutionSupoorted(Z)V

    .line 534
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingCallBack:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V

    .line 535
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    xor-int/2addr p0, v3

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->showPreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;Z)V

    return-void
.end method

.method private updateEdgeEffectParams(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V
    .locals 2

    .line 1583
    invoke-static {}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->getInstance()Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;

    move-result-object v0

    .line 1584
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/edgelighting/effectservice/EffectServiceCollector;->getEdgeStyle(Ljava/lang/String;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    move-result-object p0

    .line 1586
    instance-of v0, p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;

    if-eqz v0, :cond_0

    .line 1587
    check-cast p0, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;

    .line 1588
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getSpecialEffect()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setSpecialEffect(Landroid/net/Uri;)V

    .line 1589
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getFrameEffect()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setFrameEffect(Landroid/net/Uri;)V

    .line 1590
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->isStartAfterToastFinished()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setSpecialAnimationStartAfterToastFinished(Z)V

    .line 1591
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->isCenterPosition()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsCenterPosition(Z)V

    .line 1592
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->isEdgeFrameEffect()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsEdgeFrameEffect(Z)V

    .line 1593
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->isEdgeSpecialEffect()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsEdgeSpecialEffect(Z)V

    .line 1594
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getSpecialWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getSpecialHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setSpecialEffectSize(II)V

    .line 1595
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/data/style/ELPlusStyle;->getRepeatCount()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setRepeatCount(I)V

    :cond_0
    return-void
.end method

.method private updateLayoutAlignment()V
    .locals 5

    .line 1624
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 1625
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x168

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1626
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1627
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x800003

    .line 1629
    :cond_2
    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1630
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private updatePreviewEdgeLighting()V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getEdgeLightingColor()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 481
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectColors([I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 483
    iget v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 484
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeAlpha(F)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    invoke-interface {v3}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-static {v1, v3, v4}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingStyleWidth(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v1

    iget v3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setStrokeWidth(FI)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setIsMultiResolutionSupoorted(Z)V

    .line 490
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updatePreviewEdgeLighting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewEffectInfo:Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->updatePreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    :cond_0
    return-void
.end method

.method private updateTabLayout()V
    .locals 5

    .line 789
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v1, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->COLOR:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 795
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v2, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->TRANSPARENCY:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    invoke-interface {v0, v2}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->WIDTH:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 796
    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurEdgeStyle:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    sget-object v4, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;->DURATION:Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 797
    invoke-interface {v0, v4}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->isSupportOption(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 802
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 414
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->style_apply_btn:I

    const-string v2, "404"

    if-ne v0, v1, :cond_1

    .line 415
    iget-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    if-eqz p1, :cond_0

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sendCurrentSettingToRoutine()V

    .line 417
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->saveCurrentSetting()V

    .line 421
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "4058"

    .line 422
    invoke-static {v2, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/systemui/R$id;->style_cancel_btn:I

    if-ne p1, v0, :cond_2

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "4059"

    .line 425
    invoke-static {v2, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1532
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1534
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker/app/SeslColorPickerDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1535
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorPickerDialog:Landroidx/picker/app/SeslColorPickerDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1536
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showColorPickerDialog()V

    .line 1539
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->measureContentFrame()V

    .line 1541
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->updateLayoutAlignment()V

    .line 1543
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEffectAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    if-eqz p0, :cond_1

    .line 1544
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 255
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    sget-boolean p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sConfigured:Z

    if-nez p1, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 258
    invoke-static {p1}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    const/4 p1, 0x1

    .line 260
    sput-boolean p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sConfigured:Z

    .line 263
    :cond_0
    sget-object p1, Lcom/android/systemui/edgelighting/Constants;->ROUTINE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->init()V

    .line 267
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->updateStatusLoggingItem(Landroid/content/Context;)V

    const-string p1, "404"

    .line 268
    invoke-static {p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendScreenLog(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->firstDrawBottomBarLayout()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 293
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mPreviewMode:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showBottomBarLayout()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->stopPreview()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mEdgeLightingCallBack:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->unRegisterEdgeWindowCallback(Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;)V

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 275
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->initAdvancedSubOption()V

    const-string v0, "36014"

    .line 281
    invoke-static {v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 285
    iget v0, p0, Landroid/content/res/Configuration;->FlipFont:I

    if-lez v0, :cond_0

    sget v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sFlipFont:I

    if-eq v1, v0, :cond_0

    .line 286
    invoke-static {}, Landroid/graphics/Typeface;->setFlipFonts()V

    .line 287
    iget p0, p0, Landroid/content/res/Configuration;->FlipFont:I

    sput p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->sFlipFont:I

    :cond_0
    return-void
.end method
