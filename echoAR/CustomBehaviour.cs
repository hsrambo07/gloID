/**************************************************************************
* Copyright (C) echoAR, Inc. 2018-2020.                                   *
* echoAR, Inc. proprietary and confidential.                              *
*                                                                         *
* Use subject to the terms of the Terms of Service available at           *
* https://www.echoar.xyz/terms, or another agreement                      *
* between echoAR, Inc. and you, your company or other organization.       *
***************************************************************************/
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class CustomBehaviour : MonoBehaviour
{
    [HideInInspector]
    public Entry entry;
    public bool clicked;
    BoxCollider boxcollider;
    GameObject box;

    /// <summary>
    /// EXAMPLE BEHAVIOUR
    /// Queries the database and names the object based on the result.
    /// </summary>

    // Use this for initialization
    void Start()
    {
        // Add RemoteTransformations script to object and set its entry
        this.gameObject.AddComponent<RemoteTransformations>().entry = entry;

        // Qurey additional data to get the name
        string value = "";
        if (entry.getAdditionalData() != null && entry.getAdditionalData().TryGetValue("name", out value))
        {
            // Set name
            this.gameObject.name = value;
        }
           
        String x, y, z, scale, data;
        entry.getAdditionalData().TryGetValue("x", out x);
        entry.getAdditionalData().TryGetValue("y", out y);
        entry.getAdditionalData().TryGetValue("z", out z);
        entry.getAdditionalData().TryGetValue("scale", out scale);
        entry.getAdditionalData().TryGetValue("data", out data);
        this.gameObject.transform.position = this.transform.position + new Vector3(float.Parse(x), 0, float.Parse(z));


        box = new GameObject(this.gameObject.name);
        box.transform.position = this.transform.position + new Vector3(float.Parse(x), 0, float.Parse(z) + 2);
        boxcollider = box.gameObject.AddComponent<BoxCollider>();
        boxcollider.size = new Vector3(1, 5, 1);

        TextMeshPro tm = box.gameObject.AddComponent<TextMeshPro>();
        tm.text = data;
        tm.fontSize = (float)0.5;
        tm.alignment = TextAlignmentOptions.Center;
        tm.transform.position = this.transform.position + new Vector3(float.Parse(x), (float)1.5, float.Parse(z) + 1);
        tm.GetComponent<RectTransform>().sizeDelta = new Vector3(1, 1, 1);
        tm.enabled = false;

    }

    // Update is called once per frame
    void Update()
    {

    }
}