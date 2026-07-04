# PropFlo UTM Structure

## Purpose

This document defines the naming system for campaign tracking links.

UTM tracking helps identify where leads came from and which campaigns produced useful enquiries.

## 1. What UTM Tracking Is

UTM tags are small tracking labels added to website links.

Example:

https://propflo.co.za/check-if-you-qualify?utm_source=google&utm_medium=cpc&utm_campaign=property_seller_search&utm_content=ad_1&utm_term=property_bridging_finance

This helps show whether a lead came from Google Ads, Meta, LinkedIn, email, WhatsApp, organic search, or a referral partner.

## 2. Standard UTM Fields

Use these fields:

- utm_source
- utm_medium
- utm_campaign
- utm_content
- utm_term

## 3. UTM Source Rules

Use lowercase only.

Recommended source values:

| Source | Use For |
|---|---|
| google | Google Ads or Google organic |
| meta | Facebook and Instagram ads |
| facebook | Organic Facebook posts |
| instagram | Organic Instagram posts |
| linkedin | LinkedIn organic or paid |
| email | Email campaigns |
| whatsapp | WhatsApp messages |
| partner | Referral partner links |
| estate_agent | Estate agent-specific links |
| conveyancer | Conveyancer-specific links |
| direct | Direct campaigns where source is manually assigned |

## 4. UTM Medium Rules

Recommended medium values:

| Medium | Use For |
|---|---|
| cpc | Paid search or paid social |
| organic | Organic search or organic social |
| email | Email campaigns |
| whatsapp | WhatsApp messages |
| referral | Referral partners |
| social | Organic social media |
| display | Banner or display ads |
| retargeting | Retargeting campaigns |

## 5. UTM Campaign Rules

Campaign names should describe the main campaign.

Use lowercase and underscores.

Examples:

- property_seller_search
- seller_bridging_finance
- estate_agent_partners
- conveyancer_partners
- meta_retargeting
- faq_content_promotion
- whatsapp_followup
- partner_outreach

## 6. UTM Content Rules

Use utm_content to identify the ad, message, creative, or link version.

Examples:

- ad_variant_1
- ad_variant_2
- seller_hero_cta
- faq_cta
- whatsapp_script_1
- email_link_1
- partner_pdf_link
- linkedin_post_1

## 7. UTM Term Rules

Use utm_term mainly for Google Ads keywords.

Examples:

- property_bridging_finance
- bridging_finance_property_sellers
- cash_before_property_transfer
- advance_on_property_sale
- waiting_for_transfer_money

For non-search campaigns, utm_term can be left blank unless needed.

## 8. Example URLs

### Google Search Ad

https://propflo.co.za/check-if-you-qualify?utm_source=google&utm_medium=cpc&utm_campaign=property_seller_search&utm_content=ad_variant_1&utm_term=property_bridging_finance

### Meta Retargeting Ad

https://propflo.co.za/how-it-works?utm_source=meta&utm_medium=retargeting&utm_campaign=meta_retargeting&utm_content=explainer_ad_1

### LinkedIn Partner Post

https://propflo.co.za/estate-agent-partners?utm_source=linkedin&utm_medium=social&utm_campaign=estate_agent_partners&utm_content=linkedin_post_1

### WhatsApp Follow-Up

https://propflo.co.za/check-if-you-qualify?utm_source=whatsapp&utm_medium=whatsapp&utm_campaign=lead_followup&utm_content=script_1

### Estate Agent Partner Link

https://propflo.co.za/check-if-you-qualify?utm_source=estate_agent&utm_medium=referral&utm_campaign=estate_agent_partners&utm_content=agent_name_or_code

## 9. Naming Rules

Use:

- Lowercase letters
- Underscores instead of spaces
- Simple descriptive names
- No random abbreviations
- No special characters
- Consistent naming every time

Do not use:

- Capital letters
- Spaces
- Long confusing names
- Different names for the same campaign
- Personal information in UTM values

## 10. Reporting Notes

Every campaign link should be stored before use.

Each link should record:

- Date created
- Campaign name
- Channel
- Destination page
- Full UTM link
- Person responsible
- Notes

## 11. Starting Recommendation

Use this UTM structure from day one.

If tracking names are inconsistent at the start, reporting becomes unreliable later.
